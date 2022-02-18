{
  description = ''Timezone library compatible with the standard library. '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-timezones-master.flake = false;
  inputs.src-timezones-master.type = "github";
  inputs.src-timezones-master.owner = "GULPF";
  inputs.src-timezones-master.repo = "timezones";
  inputs.src-timezones-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timezones-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timezones-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timezones-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}