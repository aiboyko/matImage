% IMMEASURES Analysis of digital images
% Version 1.1 01-Jul-2011 .
%
%   Provides several functions for measurements on digital images. Most
%   functions are simple wrappers that manage 3D and/or color images, as
%   well as eventual type conversion.
%   Some geometrical measures are provided as well, for description of
%   particles in binary or in label images.
%
% Histogram, entropy, mutual information
%   imHistogram                - Histogram of 2D/3D grayscale or color images
%   imJointHistogram           - Compute joint histogram of two images
%   imEntropy                  - Compute entropy of an image
%   imJointEntropy             - Joint entropy between two images
%   imMutualInformation        - Mutual information between two images
%
% Particle analysis
%   imCentroid                 - Centroid of regions in a label image
%   imBoundingBox              - Bounding box of a binary or label image
%   imOrientedBox              - Minimum-area oriented bounding box of particles in image
%   imInertiaEllipse           - Inertia ellipse of a binary or label image
%   imInertiaEllipsoid         - Inertia ellipsoid of a 3D binary image
%   imFeretDiameter            - Feret diameter of a particle(s) for a given direction(s)
%   imMaxFeretDiameter         - Maximum Feret diameter of a binary or label image
%   imConvexity                - Convexity of particles in label image
%
% Particle moments
%   imMoment                   - Compute simple moment(s) of an image
%   imCMoment                  - Compute centered moment of an image
%   imCSMoment                 - Compute centered and scaled moment of an image
%   imHuInvariants             - Compute Hu's invariant for an image
%
% Geometrical measures from binary images
%   perimeter                  - estimate perimeter of a structure
%   epc                        - compute Euler-Poincare Characteristic (EPC) of a structure.
%   tpl                        - compute total projection length
%   specificSurface            - implementation of Ohser's algo for surface comput.
%   specificIntMeanCurv        - Ohser's Integral of Mean Curvature
%   specificIntMeanCurvDetails - Ohser's Integral of Mean Curvature with details
%
% General information on images
%   is3DImage                  - Check if an image is 3D
%   isColorImage               - Check if an image is a color image
%   imGrayscaleExtent          - Grayscale extent of an image
%
%  Descriptive statistics on pixel values
%   imSum                      - Sum of a grayscale image, or sum of each color component
%   imMean                     - Mean of a grayscale image, or mean of each color component
%   imStd                      - Standard deviation of pixel values
%   imVar                      - Variance of a grayscale image, or of each color component
%   imMin                      - Minimum value of a grayscale image, or of each color component
%   imMax                      - Maximum value of a grayscale image, or of each color component
%   imMedian                   - Median value of a grayscale image, or of each color component
%   imMode                     - Mode of pixel values in an image
%
% Other
%   imRAG                      - Region adjacency graph of a labeled image
%   findContour                - return chain of points making a contour
%
%
% -----
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% created the  19/04/2004.
% Copyright INRA - Cepia Software Platform.
% http://www.pfl-cepia.inra.fr/index.php?page=imael
% Licensed under the terms of the BSD License, see the file license.txt
 
% display help if executed
help Contents

%   Deprecated:
%   specificIMCDetails         - Ohser's Integral of Mean Curvature
