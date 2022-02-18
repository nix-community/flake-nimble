{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hmisc-v0_8_9.flake = false;
  inputs.src-hmisc-v0_8_9.type = "github";
  inputs.src-hmisc-v0_8_9.owner = "haxscramper";
  inputs.src-hmisc-v0_8_9.repo = "hmisc";
  inputs.src-hmisc-v0_8_9.ref = "refs/tags/v0.8.9";
  
  
  inputs."sorta".type = "github";
  inputs."sorta".owner = "riinr";
  inputs."sorta".repo = "flake-nimble";
  inputs."sorta".ref = "flake-pinning";
  inputs."sorta".dir = "nimpkgs/s/sorta";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_8_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_8_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_8_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}