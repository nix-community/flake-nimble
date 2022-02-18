{
  description = ''Max wrapper for omni.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-omnimax-0_1_0.flake = false;
  inputs.src-omnimax-0_1_0.type = "github";
  inputs.src-omnimax-0_1_0.owner = "vitreo12";
  inputs.src-omnimax-0_1_0.repo = "omnimax";
  inputs.src-omnimax-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."omni".type = "github";
  inputs."omni".owner = "riinr";
  inputs."omni".repo = "flake-nimble";
  inputs."omni".ref = "flake-pinning";
  inputs."omni".dir = "nimpkgs/o/omni";

  outputs = { self, nixpkgs, flakeNimbleLib, src-omnimax-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnimax-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omnimax-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}