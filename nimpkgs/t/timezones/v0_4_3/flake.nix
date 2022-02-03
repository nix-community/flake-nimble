{
  description = ''Timezone library compatible with the standard library. '';
  inputs.src-timezones-v0_4_3.flake = false;
  inputs.src-timezones-v0_4_3.type = "github";
  inputs.src-timezones-v0_4_3.owner = "GULPF";
  inputs.src-timezones-v0_4_3.repo = "timezones";
  inputs.src-timezones-v0_4_3.ref = "refs/tags/v0.4.3";
  
  outputs = { self, nixpkgs, src-timezones-v0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timezones-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timezones-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}