{
  description = ''A Jupyter kernel for nim.'';
  inputs.src-jupyternim-v0_4_0.flake = false;
  inputs.src-jupyternim-v0_4_0.type = "github";
  inputs.src-jupyternim-v0_4_0.owner = "stisa";
  inputs.src-jupyternim-v0_4_0.repo = "jupyternim";
  inputs.src-jupyternim-v0_4_0.ref = "refs/tags/v0.4.0";
  
  
  inputs."zmq".type = "github";
  inputs."zmq".owner = "riinr";
  inputs."zmq".repo = "flake-nimble";
  inputs."zmq".ref = "flake-pinning";
  inputs."zmq".dir = "nimpkgs/z/zmq";

  
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  
  inputs."python3".type = "github";
  inputs."python3".owner = "riinr";
  inputs."python3".repo = "flake-nimble";
  inputs."python3".ref = "flake-pinning";
  inputs."python3".dir = "nimpkgs/p/python3";

  outputs = { self, nixpkgs, src-jupyternim-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jupyternim-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jupyternim-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}