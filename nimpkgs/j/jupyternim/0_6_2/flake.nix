{
  description = ''A Jupyter kernel for nim.'';
  inputs.src-jupyternim-0_6_2.flake = false;
  inputs.src-jupyternim-0_6_2.type = "github";
  inputs.src-jupyternim-0_6_2.owner = "stisa";
  inputs.src-jupyternim-0_6_2.repo = "jupyternim";
  inputs.src-jupyternim-0_6_2.ref = "refs/tags/0.6.2";
  
  
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

  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  outputs = { self, nixpkgs, src-jupyternim-0_6_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jupyternim-0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jupyternim-0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}