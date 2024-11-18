% Define material properties 
E = 210e9; % Young's Modulus in Pa
% Cross-sectional area
A=0.00895

% Define node coordinates [x, y, z] in meters (nodes from support to support)
nodes = [
    0, 0, 0;     % Node 1 (support)
    0, 1.75, 0;  % Node 2
    0, 3.5, 0;   % Node 3
    0, 5.25, 0;  % Node 4
    0, 7.0, 0;   % Node 5
    0, 8.75, 0;  % Node 6
    0, 10.5, 0;  % Node 7
    0, 12.25, 0; % Node 8
    0, 14.0, 0;  % Node 9
    0, 15.75, 0; % Node 10
    0, 17.5, 0;  % Node 11
    0, 19.25, 0; % Node 12
    0, 21.1, 0;  % Node 13 (support)
    % Upper nodes
    2.8, 0, 0;     % Node 14
    2.8, 1.75, 0;  % Node 15
    2.8, 3.5, 0;   % Node 16
    2.8, 5.25, 0;  % Node 17
    2.8, 7.0, 0;   % Node 18
    2.8, 8.75, 0;  % Node 19
    2.8, 10.5, 0;  % Node 20
    2.8, 12.25, 0; % Node 21
    2.8, 14.0, 0;  % Node 22
    2.8, 15.75, 0; % Node 23
    2.8, 17.5, 0;  % Node 24
    2.8, 19.25, 0; % Node 25
    2.8, 21.1, 0;  % Node 26
    % Bottom nodes (set 1)
    0, 0, -2.3;    % Node 27
    0, 1.75, -2.3; % Node 28
    0, 3.5, -2.3;  % Node 29
    0, 5.25, -2.3; % Node 30
    0, 7.0, -2.3;  % Node 31
    0, 8.75, -2.3; % Node 32
    0, 10.5, -2.3; % Node 33
    0, 12.25, -2.3;% Node 34
    0, 14.0, -2.3; % Node 35
    0, 15.75, -2.3;% Node 36
    0, 17.5, -2.3; % Node 37
    0, 19.25, -2.3;% Node 38
    0, 21.1, -2.3; % Node 39
    % Bottom nodes (set 2)
    2.8, 0, -2.3;    % Node 40
    2.8, 1.75, -2.3; % Node 41
    2.8, 3.5, -2.3;  % Node 42
    2.8, 5.25, -2.3; % Node 43
    2.8, 7.0, -2.3;  % Node 44
    2.8, 8.75, -2.3; % Node 45
    2.8, 10.5, -2.3; % Node 46
    2.8, 12.25, -2.3;% Node 47
    2.8, 14.0, -2.3; % Node 48
    2.8, 15.75, -2.3;% Node 49
    2.8, 17.5, -2.3; % Node 50
    2.8, 19.25, -2.3;% Node 51
    2.8, 21.1, -2.3; % Node 52
];

% Define element connectivity [node1, node2]
elements = [
    % Top Left Elements
    1, 2;
    2, 3;
    3, 4;
    4, 5;
    5, 6;
    6, 7;
    7, 8;
    8, 9;
    9, 10;
    10, 11;
    11, 12;
    12, 13;
    % Top Right elements
    14, 15;
    15, 16;
    16, 17;
    17, 18;
    18, 19;
    19, 20;
    20, 21;
    21, 22;
    22, 23;
    23, 24;
    24, 25;
    25, 26;
    % Top Horizontal elements
    1, 14;
    2, 15;
    3, 16;
    4, 17;
    5, 18;
    6, 19;
    7, 20;
    8, 21;
    9, 22;
    10, 23;
    11, 24;
    12, 25;
    13, 26;
    % Bottom Left Elements
    27, 28;
    28, 29;
    29, 30;
    30, 31;
    31, 32;
    32, 33;
    33, 34;
    34, 35;
    35, 36;
    36, 37;
    37, 38;
    38, 39;
    % Bottom Right Elements
    40, 41;
    41, 42;
    42, 43;
    43, 44;
    44, 45;
    45, 46;
    46, 47;
    47, 48;
    48, 49;
    49, 50;
    50, 51;
    51, 52;
    % Bottom Horizontal elements
    27, 40;
    28, 41;
    29, 42;
    30, 43;
    31, 44;
    32, 45;
    33, 46;
    34, 47;
    35, 48;
    36, 49;
    37, 50;
    38, 51;
    39, 52;
        % Left Vertical Elements
    1, 27;
    2, 28;
    3, 29;
    4, 30;
    5, 31;
    6, 32;
    7, 33;
    8, 34;
    9, 35;
    10, 36;
    11, 37;
    12, 38;
    13, 39;
    % Right Vertical Elements
    14, 40;
    15, 41;
    16, 42;
    17, 43;
    18, 44;
    19, 45;
    20, 46;
    21, 47;
    22, 48;
    23, 49;
    24, 50;
    25, 51;
    26, 52;
% X-diagonal elements
    1, 40; 14, 27;  % First X
    2, 41; 15, 28;  % Second X
    3, 42; 16, 29;  % Third X
    4, 43; 17, 30;  % Fourth X
    5, 44; 18, 31;  % Fifth X
    6, 45; 19, 32;  % Sixth X
    7, 46; 20, 33;  % Seventh X
    8, 47; 21, 34;  % Eighth X
    9, 48; 22, 35;  % Ninth X
    10, 49; 23, 36; % Tenth X
    11, 50; 24, 37; % Eleventh X
    12, 51; 25, 38; % Twelfth X
    13, 52; 26, 39; % Thirteenth X
    % Diagonal elements
    1, 28;
    2, 29;
    3, 30;
    4, 31;
    5, 32;
    6, 33;
    33, 8;
    34, 9;
    35, 10;
    36, 11;
    37, 12;
    38, 13;
    % Additional diagonals
    14, 41;
    15, 42;
    16, 43;
    17, 44;
    18, 45;
    19, 46;
    48, 21;
    49, 22;
    50, 23;
    51, 24;
    52, 25;
    52, 26;
];

% Parameters for railways
numPairs = 12; % Number of pairs to add
yStart = 1.75; % Starting y-position for the first pair
yIncrement = 1.75; % Increment in y for each subsequent pair
x1 = 2.8 / 3; % x-position for the first member in each pair
x2 = 2 * (2.8 / 3); % x-position for the second member in each pair

% Initialize empty array for new railway element node indices
railwayElements = [];

% Loop through each pair to define start and end node indices
for i = 1:numPairs
    % Calculate node index for each starting and ending node in the pair
    nodeStartIndex = i;           % Starting node on left side
    nodeEndIndex = 13 + i;        % Ending node on right side
    
    % Add pairs of node indices to railwayElements
    railwayElements = [railwayElements;
                       nodeStartIndex, nodeEndIndex; % First railway
                       nodeStartIndex + 1, nodeEndIndex + 1]; % Second railway
end

% Append the railway elements to the existing elements array
elements = [elements; railwayElements];


% Number of nodes and degrees of freedom
numNodes = size(nodes, 1);
numDOF = numNodes * 3; % 3 DOF per node (x, y, z)

% Initialize global stiffness matrix
K_global = zeros(numDOF);

% Loop through each element to construct the global stiffness matrix
for i = 1:size(elements, 1)
    node1 = elements(i, 1);
    node2 = elements(i, 2);
    
    % Get coordinates of the nodes
    coord1 = nodes(node1, :);
    coord2 = nodes(node2, :);
    
    % Calculate length of the element
    L = norm(coord2 - coord1);
    
    % Direction cosines
    lx = (coord2(1) - coord1(1)) / L;
    ly = (coord2(2) - coord1(2)) / L;
    lz = (coord2(3) - coord1(3)) / L;
    
    % Transformation matrix
    T = [lx, ly, lz, 0, 0, 0;
         0, 0, 0, lx, ly, lz];
    
    % Local stiffness matrix in local coordinates
    k_local = (E * A / L) * [1, -1; -1, 1];
    
    % Local stiffness matrix in global coordinates
    k_global = T' * k_local * T;
    
    % Assembly into the global stiffness matrix
    dofIndices = [(node1-1)*3+1:(node1-1)*3+3, (node2-1)*3+1:(node2-1)*3+3];
    K_global(dofIndices, dofIndices) = K_global(dofIndices, dofIndices) + k_global;
end


% Define boundary conditions for two pinned supports and two roller supports

% Pinned supports at Nodes 27 and 40 (fixed in x, y, and z)
pinnedDOF = [(27-1)*3+1, (27-1)*3+2, (27-1)*3+3, ...
             (40-1)*3+1, (40-1)*3+2, (40-1)*3+3];

% Roller supports at Nodes 39 and 52 (fixed in y and z, free in x)
rollerDOF = [(39-1)*3+2, (39-1)*3+3, ...
             (52-1)*3+2, (52-1)*3+3];

% Combine the fixed degrees of freedom for both pinned and roller supports
fixedDOF = [pinnedDOF, rollerDOF];

% Reduce the global stiffness matrix for solving
freeDOF = setdiff(1:numDOF, fixedDOF);
K_reduced = K_global(freeDOF, freeDOF);

% Define load vector
F = zeros(numDOF, 1);

% Apply 312.5 kN in the z-direction at nodes 6, 8, 19, and 21
F((6-1)*3 + 3) = -312.5e3;  % Node 6
F((8-1)*3 + 3) = -312.5e3;  % Node 8
F((19-1)*3 + 3) = -312.5e3; % Node 19
F((21-1)*3 + 3) = -312.5e3; % Node 21

% Reduced load vector
F_reduced = F(freeDOF);

% Solve for displacements
U_reduced = K_reduced \ F_reduced;

% Combine displacements with zero displacement at fixed DOF
U = zeros(numDOF, 1);
U(freeDOF) = U_reduced;

% Display results
disp('Node Displacements (x, y, z):');
for i = 1:numNodes
    fprintf('Node %d: (%.4e, %.4e, %.4e) m\n', i, U((i-1)*3+1), U((i-1)*3+2), U((i-1)*3+3));
end
% Initialize a matrix to store element stresses
elementStresses = zeros(size(elements, 1), 1);

% Loop through each element to calculate stresses
for i = 1:size(elements, 1)
    node1 = elements(i, 1);
    node2 = elements(i, 2);
    
    % Get coordinates of the nodes
    coord1 = nodes(node1, :);
    coord2 = nodes(node2, :);
    
    % Calculate length of the element
    L = norm(coord2 - coord1);
    
    % Direction cosines
    lx = (coord2(1) - coord1(1)) / L;
    ly = (coord2(2) - coord1(2)) / L;
    lz = (coord2(3) - coord1(3)) / L;
    
    % Transformation matrix
    T = [lx, ly, lz, 0, 0, 0;
         0, 0, 0, lx, ly, lz];
    
    % Displacements for nodes in global coordinates
    U_element = [U((node1-1)*3+1:(node1-1)*3+3); U((node2-1)*3+1:(node2-1)*3+3)];
    
    % Transform displacements to local coordinates
    U_local = T * U_element;
    
    % Calculate the axial deformation in the element
    delta_L = U_local(2) - U_local(1);
    
    % Calculate the stress in the element
    elementStresses(i) = (E / L) * delta_L;
end

% Display element stresses
disp('Element Stresses (in Pa):');
for i = 1:size(elements, 1)
    fprintf('Element %d: %.4e Pa\n', i, elementStresses(i));
end

% Extract z-displacements for nodes 27 to 39
nodeIndices = 27:39;
zDisplacements = U((nodeIndices-1) * 3 + 3); % Extract z-component

% Create table for output
T = table(nodeIndices', zDisplacements, 'VariableNames', {'Node', 'Z_Displacement'});

% Write to CSV file
writetable(T, 'z_displacements_nodes_27_to_39.csv');

disp('Z-displacements for nodes 27 to 39 saved to z_displacements_nodes_27_to_39.csv');
