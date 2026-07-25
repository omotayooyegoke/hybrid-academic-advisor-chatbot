% =====================================
% COURSES KNOWLEDGE BASE
% MSc Systems Engineering
% =====================================

% --------------------------------------------------
% GENERAL COMPULSORY COURSES
% --------------------------------------------------

course(
    ssg801,
    'Numerical Methods in Engineering',
    3,
    general
).

course_description(
    ssg801,
    'Methods for obtaining numerical solutions to engineering problems including differential equations, vibrations, diffusion, heat transfer, wave propagation and simulation of dynamical systems.'
).

teaches(ssg801, numerical_methods).
teaches(ssg801, differential_equations).
teaches(ssg801, vibrations).
teaches(ssg801, heat_transfer).
teaches(ssg801, diffusion).
teaches(ssg801, wave_propagation).
teaches(ssg801, simulation).
teaches(ssg801, dynamical_systems).

% --------------------------------------------------

course(
    ssg803,
    'Methods of Applied Mathematics I',
    3,
    general
).

course_description(
    ssg803,
    'Ordinary differential equations, series, orthogonal functions, vector fields, matrices and partial differential equations.'
).

teaches(ssg803, ordinary_differential_equations).
teaches(ssg803, series).
teaches(ssg803, orthogonal_functions).
teaches(ssg803, vector_fields).
teaches(ssg803, matrices).
teaches(ssg803, partial_differential_equations).

% --------------------------------------------------

course(
    ssg813,
    'Linear and Non-Linear Systems Analysis',
    3,
    general
).

course_description(
    ssg813,
    'Linear algebra, regression analysis, covariance analysis, network analysis, production models, cybernetics, system simulation, digital filters and stability analysis.'
).

teaches(ssg813, linear_algebra).
teaches(ssg813, regression_analysis).
teaches(ssg813, covariance_analysis).
teaches(ssg813, network_analysis).
teaches(ssg813, cybernetics).
teaches(ssg813, system_simulation).
teaches(ssg813, digital_filters).
teaches(ssg813, stability_analysis).

% --------------------------------------------------

course(
    ssg815,
    'Knowledge-Based Systems and Artificial Intelligence',
    3,
    general
).

course_description(
    ssg815,
    'Artificial intelligence, expert systems, symbolic knowledge representation, Prolog programming, semantic networks, neural networks, heuristic search and inference.'
).

teaches(ssg815, artificial_intelligence).
teaches(ssg815, expert_systems).
teaches(ssg815, prolog).
teaches(ssg815, knowledge_representation).
teaches(ssg815, semantic_networks).
teaches(ssg815, neural_networks).
teaches(ssg815, heuristic_search).
teaches(ssg815, forward_chaining).
teaches(ssg815, backward_chaining).

% --------------------------------------------------
% ARTIFICIAL INTELLIGENCE SPECIALIZATION
% --------------------------------------------------

course(
    ssg816,
    'Expert Systems with Applications to Engineering Problems',
    3,
    artificial_intelligence
).

course_description(
    ssg816,
    'Application of expert systems to engineering problems using Prolog including process control, utility systems and engineering control applications.'
).

teaches(ssg816, expert_systems).
teaches(ssg816, prolog).
teaches(ssg816, process_control).
teaches(ssg816, utility_systems).
teaches(ssg816, control_systems).
teaches(ssg816, engineering_applications).

% --------------------------------------------------

course(
    ssg818,
    'Introduction to Neural Networks and Applications',
    3,
    artificial_intelligence
).

course_description(
    ssg818,
    'Artificial neural network architectures including backpropagation, Kohonen networks, Adaline, Hopfield and recurrent neural networks.'
).

teaches(ssg818, neural_networks).
teaches(ssg818, backpropagation).
teaches(ssg818, kohonen_networks).
teaches(ssg818, adaline).
teaches(ssg818, hopfield_networks).
teaches(ssg818, recurrent_networks).
teaches(ssg818, machine_learning).

% --------------------------------------------------

course(
    ssg819,
    'Robotic Applications',
    3,
    artificial_intelligence
).

course_description(
    ssg819,
    'History, development, implementation and applications of robots including control systems and sensory feedback.'
).

teaches(ssg819, robotics).
teaches(ssg819, robot_control).
teaches(ssg819, sensory_feedback).
teaches(ssg819, automation).

% --------------------------------------------------

course(
    ssg821,
    'Expert Systems in Manufacturing and Engineering',
    3,
    artificial_intelligence
).

course_description(
    ssg821,
    'Knowledge-based engineering system design, inferencing, symbolic models and expert system development.'
).

teaches(ssg821, expert_systems).
teaches(ssg821, inferencing).
teaches(ssg821, symbolic_models).
teaches(ssg821, knowledge_bases).
teaches(ssg821, engineering_design).

% --------------------------------------------------

course(
    ssg831,
    'Knowledge Based Systems and Web Agents',
    3,
    artificial_intelligence
).

course_description(
    ssg831,
    'Knowledge acquisition, reasoning under uncertainty, artificial intelligence techniques and web agents.'
).

teaches(ssg831, web_agents).
teaches(ssg831, knowledge_acquisition).
teaches(ssg831, reasoning).
teaches(ssg831, uncertainty).
teaches(ssg831, artificial_intelligence).

% --------------------------------------------------
% MODELLING AND SIMULATION SPECIALIZATION
% --------------------------------------------------

course(
    ssg814,
    'Systems Identification, Optimization and Control',
    3,
    modelling_simulation
).

course_description(
    ssg814,
    'Numerical techniques for estimation, identification, optimization, control systems, Kalman filtering and mathematical programming.'
).

teaches(ssg814, system_identification).
teaches(ssg814, optimization).
teaches(ssg814, control_systems).
teaches(ssg814, kalman_filter).
teaches(ssg814, mathematical_programming).
teaches(ssg814, dynamic_systems).

% --------------------------------------------------

course(
    ssg811,
    'Mathematical Programming',
    3,
    modelling_simulation
).

course_description(
    ssg811,
    'Mathematical programming methods and optimization techniques for engineering decision making.'
).

teaches(ssg811, mathematical_programming).
teaches(ssg811, optimization).
teaches(ssg811, decision_making).

% --------------------------------------------------

course(
    csc841,
    'Modelling and Simulation',
    3,
    modelling_simulation
).

course_description(
    csc841,
    'Construction of models that simulate real systems using probability theory, statistical inference, random variables and simulation languages.'
).

teaches(csc841, modelling).
teaches(csc841, simulation).
teaches(csc841, probability).
teaches(csc841, statistical_inference).
teaches(csc841, random_variables).

% --------------------------------------------------
% INFORMATION AND COMMUNICATION TECHNOLOGY SPECIALIZATION
% --------------------------------------------------

course(
    ssg817,
    'Communication and Networks',
    3,
    ict
).

course_description(
    ssg817,
    'Digital communications, information theory, networking, routing, coding, modulation and wireless communications.'
).

teaches(ssg817, communication_networks).
teaches(ssg817, information_theory).
teaches(ssg817, routing).
teaches(ssg817, wireless_communication).
teaches(ssg817, modulation).
teaches(ssg817, networking).

% --------------------------------------------------

course(
    ssg820,
    'Fault-Tolerant Digital Systems',
    3,
    ict
).

course_description(
    ssg820,
    'Design and analysis of fault tolerant digital systems using redundancy techniques and reliability evaluation.'
).

teaches(ssg820, fault_tolerance).
teaches(ssg820, redundancy).
teaches(ssg820, reliability).
teaches(ssg820, digital_systems).

% --------------------------------------------------

course(
    csc811,
    'Communication Networks and Distributed Processing',
    3,
    ict
).

course_description(
    csc811,
    'Network protocols, distributed systems, client-server computing, security and network management.'
).

teaches(csc811, distributed_systems).
teaches(csc811, network_protocols).
teaches(csc811, client_server_computing).
teaches(csc811, network_security).
teaches(csc811, network_management).

% --------------------------------------------------

course(
    csc830,
    'Database Management System Design',
    3,
    ict
).

course_description(
    csc830,
    'Database models, normalization, file organization, security and data integrity.'
).

teaches(csc830, database_systems).
teaches(csc830, normalization).
teaches(csc830, data_integrity).
teaches(csc830, database_design).

% --------------------------------------------------
% ENGINEERING ANALYSIS SPECIALIZATION
% --------------------------------------------------

course(
    ssg804,
    'Methods of Applied Mathematics II',
    3,
    engineering_analysis
).

course_description(
    ssg804,
    'Partial differential equations, Green functions, Fourier transforms, Laplace transforms, complex variables, calculus of variations and tensor analysis.'
).

teaches(ssg804, partial_differential_equations).
teaches(ssg804, greens_functions).
teaches(ssg804, fourier_transforms).
teaches(ssg804, laplace_transforms).
teaches(ssg804, tensor_analysis).

% --------------------------------------------------

course(
    ssg805,
    'Mechanics of Continua',
    3,
    engineering_analysis
).

course_description(
    ssg805,
    'Mechanics of continuous media, stress analysis, deformable media, constitutive relations and continuum theories.'
).

teaches(ssg805, continuum_mechanics).
teaches(ssg805, stress_analysis).
teaches(ssg805, deformable_media).
teaches(ssg805, constitutive_relations).

% --------------------------------------------------

course(
    ssg806,
    'Mathematical Theory of Elasticity',
    3,
    engineering_analysis
).

course_description(
    ssg806,
    'Large deformation elasticity, elasticity problems, conformal mapping and torsion problems.'
).

teaches(ssg806, elasticity).
teaches(ssg806, deformation).
teaches(ssg806, conformal_mapping).
teaches(ssg806, torsion).

% --------------------------------------------------

course(
    ssg807,
    'Function Space Methods',
    3,
    engineering_analysis
).

course_description(
    ssg807,
    'Function spaces, operators, Galerkin methods, Ritz procedures and engineering field problem solutions.'
).

teaches(ssg807, function_spaces).
teaches(ssg807, galerkin_method).
teaches(ssg807, ritz_method).
teaches(ssg807, engineering_analysis).

% --------------------------------------------------

course(
    ssg808,
    'Continuum Mechanics and Thermodynamics of Solids',
    3,
    engineering_analysis
).

course_description(
    ssg808,
    'Nonlinear elasticity, thermoelasticity, wave propagation and viscoelasticity.'
).

teaches(ssg808, thermoelasticity).
teaches(ssg808, nonlinear_elasticity).
teaches(ssg808, wave_propagation).
teaches(ssg808, viscoelasticity).

% --------------------------------------------------

course(
    ssg809,
    'Electromagnetic Wave Interactions',
    3,
    engineering_analysis
).

course_description(
    ssg809,
    'Maxwell equations, electromagnetic scattering, radiation, reciprocity and variational techniques.'
).

teaches(ssg809, maxwell_equations).
teaches(ssg809, electromagnetic_scattering).
teaches(ssg809, radiation).
teaches(ssg809, reciprocity).

% --------------------------------------------------

course(
    ssg810,
    'Continuum Electromagnetics',
    3,
    engineering_analysis
).

course_description(
    ssg810,
    'Electromagnetic field equations, magnetic diffusion, electromagnetic hydrodynamics and magnetic levitation.'
).

teaches(ssg810, electromagnetics).
teaches(ssg810, magnetic_diffusion).
teaches(ssg810, hydrodynamics).
teaches(ssg810, magnetic_levitation).

% --------------------------------------------------
% ENGINEERING SYSTEMS MANAGEMENT
% --------------------------------------------------

course(
    ssg845,
    'Theory of Reliability of Engineering Systems',
    3,
    engineering_systems_management
).

course_description(
    ssg845,
    'Reliability models, failure distributions, reliability testing and reliability design.'
).

teaches(ssg845, reliability).
teaches(ssg845, failure_analysis).
teaches(ssg845, reliability_testing).

% --------------------------------------------------

course(
    ssg848,
    'Crisis Management in Engineering Systems',
    3,
    engineering_systems_management
).

course_description(
    ssg848,
    'Crisis modelling, disaster recovery, risk mitigation, forecasting and decision support systems.'
).

teaches(ssg848, crisis_management).
teaches(ssg848, disaster_recovery).
teaches(ssg848, risk_management).
teaches(ssg848, decision_support).

% --------------------------------------------------

course(
    ssg835,
    'Hazardous Material Management I',
    3,
    engineering_systems_management
).

course_description(
    ssg835,
    'Identification, storage, transportation and disposal of hazardous materials.'
).

teaches(ssg835, hazardous_materials).
teaches(ssg835, chemical_safety).
teaches(ssg835, waste_management).

% --------------------------------------------------

course(
    ssg837,
    'Advanced Industrial Management',
    3,
    engineering_systems_management
).

course_description(
    ssg837,
    'Strategic planning, leadership, quality management and engineering management.'
).

teaches(ssg837, leadership).
teaches(ssg837, strategic_planning).
teaches(ssg837, quality_management).

% --------------------------------------------------

course(
    ssg839,
    'Occupational Safety Engineering II',
    3,
    engineering_systems_management
).

course_description(
    ssg839,
    'Occupational safety, accident prevention, fire protection and hazard analysis.'
).

teaches(ssg839, occupational_safety).
teaches(ssg839, hazard_analysis).
teaches(ssg839, fire_protection).

% --------------------------------------------------

course(
    ssg840,
    'Systems Methodology',
    3,
    engineering_systems_management
).

course_description(
    ssg840,
    'Systems engineering process, requirements analysis, forecasting and system design.'
).

teaches(ssg840, systems_engineering).
teaches(ssg840, requirements_analysis).
teaches(ssg840, forecasting).
teaches(ssg840, system_design).

% --------------------------------------------------

course(
    ssg841,
    'Management Information Systems',
    3,
    engineering_systems_management
).

course_description(
    ssg841,
    'Organizational information needs and management information systems.'
).

teaches(ssg841, management_information_systems).
teaches(ssg841, information_management).

% --------------------------------------------------

course(
    ssg842,
    'Management and Methods in Reliability',
    3,
    engineering_systems_management
).

course_description(
    ssg842,
    'Reliability concepts and methods for industrial systems.'
).

teaches(ssg842, reliability).
teaches(ssg842, industrial_systems).

% --------------------------------------------------

course(
    ssg843,
    'Safety Engineering Management',
    3,
    engineering_systems_management
).

course_description(
    ssg843,
    'Safety engineering principles, accident reduction and safety regulations.'
).

teaches(ssg843, safety_engineering).
teaches(ssg843, accident_prevention).

% --------------------------------------------------

course(
    ssg844,
    'Utility System Reliability',
    3,
    engineering_systems_management
).

course_description(
    ssg844,
    'Reliability analysis of power, water and telecommunications systems.'
).

teaches(ssg844, utility_systems).
teaches(ssg844, power_systems).
teaches(ssg844, telecommunications).

% --------------------------------------------------

course(
    ssg846,
    'Knowledge Based Systems and Web Agents',
    3,
    engineering_systems_management
).

course_description(
    ssg846,
    'Knowledge representation, reasoning and web agents for engineering applications.'
).

teaches(ssg846, knowledge_based_systems).
teaches(ssg846, web_agents).

% --------------------------------------------------

course(
    ssg847,
    'Environmental Impact Assessment',
    2,
    engineering_systems_management
).

course_description(
    ssg847,
    'Environmental impact assessment processes, sustainability and environmental policy.'
).

teaches(ssg847, environmental_impact_assessment).
teaches(ssg847, sustainability).

% --------------------------------------------------

course(
    ssg849,
    'Advanced Engineering Management Science',
    3,
    engineering_systems_management
).

course_description(
    ssg849,
    'Management science techniques including optimization, simulation and statistical analysis.'
).

teaches(ssg849, management_science).
teaches(ssg849, optimization).
teaches(ssg849, simulation).
teaches(ssg849, statistical_analysis).

