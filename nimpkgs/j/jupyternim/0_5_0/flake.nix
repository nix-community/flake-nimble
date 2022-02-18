{
  description = ''A Jupyter kernel for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jupyternim-0_5_0.flake = false;
  inputs.src-jupyternim-0_5_0.type = "github";
  inputs.src-jupyternim-0_5_0.owner = "stisa";
  inputs.src-jupyternim-0_5_0.repo = "jupyternim";
  inputs.src-jupyternim-0_5_0.ref = "refs/tags/0.5.0";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-jupyternim-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jupyternim-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jupyternim-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}