{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hmisc-v0_8_4.flake = false;
  inputs.src-hmisc-v0_8_4.type = "github";
  inputs.src-hmisc-v0_8_4.owner = "haxscramper";
  inputs.src-hmisc-v0_8_4.repo = "hmisc";
  inputs.src-hmisc-v0_8_4.ref = "refs/tags/v0.8.4";
  inputs.src-hmisc-v0_8_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_8_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_8_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_8_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}