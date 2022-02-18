{
  description = ''A command to encode / decode text with your dictionary'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-edens-1_0_0.flake = false;
  inputs.src-edens-1_0_0.type = "github";
  inputs.src-edens-1_0_0.owner = "jiro4989";
  inputs.src-edens-1_0_0.repo = "edens";
  inputs.src-edens-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-edens-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-edens-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-edens-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}