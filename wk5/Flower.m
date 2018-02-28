classdef Flower
    properties
        petalWidth
        petalLength
        sepalWidth
        sepalLength
        species
    end
    methods
        function obj = Flower(pW,pL,sW,sL,sp)
            obj.petalWidth = pW
            obj.petalLength = pL
            obj.sepalWidth = sW
            obj.sepalLength = sL
            obj.species = sp
        end
        function len = getSLength(obj)
            len = obj.sepalLength;
        end
        function report(obj)
            fprintf('The length and width of its sepal are %.1f cm and %.1f cm respectively, while those of its petal are %.1f cm and %.1f cm respectively. It belongs to the %s species', obj.petalLength, obj.petalWidth, obj.sepalLength, obj.sepalWidth, obj.species );
        end
    end
end