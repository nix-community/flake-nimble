{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hmisc-v0_6_1.flake = false;
  inputs.src-hmisc-v0_6_1.type = "github";
  inputs.src-hmisc-v0_6_1.owner = "haxscramper";
  inputs.src-hmisc-v0_6_1.repo = "hmisc";
  inputs.src-hmisc-v0_6_1.ref = "refs/tags/v0.6.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_6_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}