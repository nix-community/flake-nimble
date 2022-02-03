{
  description = ''Timezone library compatible with the standard library. '';
  inputs.src-timezones-master.flake = false;
  inputs.src-timezones-master.type = "github";
  inputs.src-timezones-master.owner = "GULPF";
  inputs.src-timezones-master.repo = "timezones";
  inputs.src-timezones-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-timezones-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timezones-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timezones-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}