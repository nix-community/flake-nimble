{
  description = ''Timezone library compatible with the standard library. '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-timezones-v0_5_4.flake = false;
  inputs.src-timezones-v0_5_4.type = "github";
  inputs.src-timezones-v0_5_4.owner = "GULPF";
  inputs.src-timezones-v0_5_4.repo = "timezones";
  inputs.src-timezones-v0_5_4.ref = "refs/tags/v0.5.4";
  inputs.src-timezones-v0_5_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timezones-v0_5_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timezones-v0_5_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timezones-v0_5_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}