classdef RigidBodyManipulatorFunction < drakeFunction.DrakeFunction
  % Abstract parent class for functions that need to store a
  % RigidBodyManipulator
  properties (SetAccess = protected)
    rbm %RigidBodyManipulator object
  end
  methods
    function obj = RigidBodyManipulatorFunction(rbm,input_frame,output_frame)
      typecheck(rbm,{'RigidBodyManipulator', ...
                     'TimeSteppingRigidBodyManipulator'});
      obj = obj@drakeFunction.DrakeFunction(input_frame,output_frame);
      obj.rbm = rbm;
    end

    function obj = setRigidBodyManipulator(obj, rbm)
      obj.rbm = rbm;
    end
  end
end

