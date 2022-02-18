{
  description = ''Timezone library compatible with the standard library. '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-timezones-v0_4_3.flake = false;
  inputs.src-timezones-v0_4_3.type = "github";
  inputs.src-timezones-v0_4_3.owner = "GULPF";
  inputs.src-timezones-v0_4_3.repo = "timezones";
  inputs.src-timezones-v0_4_3.ref = "refs/tags/v0.4.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timezones-v0_4_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timezones-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timezones-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}