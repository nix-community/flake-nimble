{
  description = ''A Jupyter kernel for nim.'';
  inputs.src-jupyternim-0_5_8.flake = false;
  inputs.src-jupyternim-0_5_8.type = "github";
  inputs.src-jupyternim-0_5_8.owner = "stisa";
  inputs.src-jupyternim-0_5_8.repo = "jupyternim";
  inputs.src-jupyternim-0_5_8.ref = "refs/tags/0.5.8";
  
  
  inputs."zmq".url = "path:../../../z/zmq";
  inputs."zmq".type = "github";
  inputs."zmq".owner = "riinr";
  inputs."zmq".repo = "flake-nimble";
  inputs."zmq".ref = "flake-pinning";
  inputs."zmq".dir = "nimpkgs/z/zmq";

  
  inputs."hmac".url = "path:../../../h/hmac";
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  
  inputs."nimsha2".url = "path:../../../n/nimsha2";
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  
  inputs."nimpng".url = "path:../../../n/nimpng";
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  outputs = { self, nixpkgs, src-jupyternim-0_5_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jupyternim-0_5_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jupyternim-0_5_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}