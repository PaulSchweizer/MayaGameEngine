import math


class DemoPhysics(object):

    """@todo documentation for DemoPhysics."""

    def __init__(self):
        """Initialize DemoPhysics."""
        super(DemoPhysics, self).__init__()
        # //state variables
        self.wheelPos = 0
        self.wheelPosVel = 0
        self.wheelAngle = 0
        self.wheelAngVel = 0
        self.user_input = 1 # //-1 or 1 to depending on arrow keys
        self.staticFriction = True

        # //system parameters, obtained from ui
        self.wheelRadius = 0.33
        self.wheelTorque = 300.0
        self.gravity = -9.81
        self.totalMass = 1500
        self.wheelInertia = 5.0
        self.coefSF = 1.0
        self.coefKf = 0.5

        # //slip speed below which we switch back to static
        self.kfToSfThreshold = 0.25
    # end def __init__

    def update(self, etime):
        normalForce = self.totalMass * self.gravity
        staticLimit = abs(normalForce * self.coefSF)

        appliedTorque = self.wheelTorque * self.user_input
        torqueForce = appliedTorque / self.wheelRadius

        # //see if we broke free
        if (abs(torqueForce) > staticLimit):
            self.staticFriction = False

        if (self.staticFriction):
            # //static friction, direct force feedback
            responseForce = -torqueForce

            # //compute acceleration of system based on result force
            acc = responseForce / (self.totalMass + (self.wheelInertia / (self.wheelRadius * self.wheelRadius)))

            # //compute new velocities
            self.wheelPosVel += acc * etime
            wheelAngVel = -self.wheelPosVel / self.wheelRadius
        else:
            # //kinetic friction, wheel is sliding
            wheelSurfaceVelocity = self.wheelPosVel + wheelAngVel * self.wheelRadius
            responseForce = -math.Sign(wheelSurfaceVelocity) * normalForce * self.coefKf

            # //feed friction force back into torque
            responseTorque = responseForce * self.wheelRadius
            angAcc = (appliedTorque + responseTorque) / self.wheelInertia
            wheelAngVel += angAcc * etime

            # //feed friction force back into system
            posAcc = responseForce / self.totalMass
            self.wheelPosVel += posAcc * etime

            # //see if we should switch back to static
            if (math.Abs(wheelSurfaceVelocity) < self.kfToSfThreshold):
                self.staticFriction = True

        # //common integration
        self.wheelPos += self.wheelPosVel * etime
        self.wheelAngle += wheelAngVel * etime

        print(self.wheelPosVel, self.staticFriction)



# end class DemoPhysics





dp = DemoPhysics()
for i in range(30):
    dp.update(1)
    # if i == 2:
    #     dp.user_input = -1
