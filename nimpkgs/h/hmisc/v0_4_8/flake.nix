{
  description = ''Collection of helper utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hmisc-v0_4_8.flake = false;
  inputs.src-hmisc-v0_4_8.type = "github";
  inputs.src-hmisc-v0_4_8.owner = "haxscramper";
  inputs.src-hmisc-v0_4_8.repo = "hmisc";
  inputs.src-hmisc-v0_4_8.ref = "refs/tags/v0.4.8";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hmisc-v0_4_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_4_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_4_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}