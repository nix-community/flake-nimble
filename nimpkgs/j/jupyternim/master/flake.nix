{
  description = ''A Jupyter kernel for nim.'';
  inputs.src-jupyternim-master.flake = false;
  inputs.src-jupyternim-master.type = "github";
  inputs.src-jupyternim-master.owner = "stisa";
  inputs.src-jupyternim-master.repo = "jupyternim";
  inputs.src-jupyternim-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-jupyternim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jupyternim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jupyternim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}