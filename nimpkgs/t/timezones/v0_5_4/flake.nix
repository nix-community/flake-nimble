{
  description = ''Timezone library compatible with the standard library. '';
  inputs.src-timezones-v0_5_4.flake = false;
  inputs.src-timezones-v0_5_4.type = "github";
  inputs.src-timezones-v0_5_4.owner = "GULPF";
  inputs.src-timezones-v0_5_4.repo = "timezones";
  inputs.src-timezones-v0_5_4.ref = "refs/tags/v0.5.4";
  
  outputs = { self, nixpkgs, src-timezones-v0_5_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timezones-v0_5_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timezones-v0_5_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}