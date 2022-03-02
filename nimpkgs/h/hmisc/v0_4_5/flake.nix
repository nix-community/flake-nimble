{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hmisc-v0_4_5.flake = false;
  inputs.src-hmisc-v0_4_5.type = "github";
  inputs.src-hmisc-v0_4_5.owner = "haxscramper";
  inputs.src-hmisc-v0_4_5.repo = "hmisc";
  inputs.src-hmisc-v0_4_5.ref = "refs/tags/v0.4.5";
  inputs.src-hmisc-v0_4_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_4_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}