{
  description = ''A Jupyter kernel for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jupyternim-0_4_2.flake = false;
  inputs.src-jupyternim-0_4_2.type = "github";
  inputs.src-jupyternim-0_4_2.owner = "stisa";
  inputs.src-jupyternim-0_4_2.repo = "jupyternim";
  inputs.src-jupyternim-0_4_2.ref = "refs/tags/0.4.2";
  inputs.src-jupyternim-0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zmq".type = "github";
  # inputs."zmq".owner = "riinr";
  # inputs."zmq".repo = "flake-nimble";
  # inputs."zmq".ref = "flake-pinning";
  # inputs."zmq".dir = "nimpkgs/z/zmq";
  # inputs."zmq".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zmq".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hmac".type = "github";
  # inputs."hmac".owner = "riinr";
  # inputs."hmac".repo = "flake-nimble";
  # inputs."hmac".ref = "flake-pinning";
  # inputs."hmac".dir = "nimpkgs/h/hmac";
  # inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimsha2".type = "github";
  # inputs."nimsha2".owner = "riinr";
  # inputs."nimsha2".repo = "flake-nimble";
  # inputs."nimsha2".ref = "flake-pinning";
  # inputs."nimsha2".dir = "nimpkgs/n/nimsha2";
  # inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."python3@".type = "github";
  # inputs."python3@".owner = "riinr";
  # inputs."python3@".repo = "flake-nimble";
  # inputs."python3@".ref = "flake-pinning";
  # inputs."python3@".dir = "nimpkgs/p/python3@";
  # inputs."python3@".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."python3@".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jupyternim-0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jupyternim-0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jupyternim-0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}