{
  description = ''Timezone library compatible with the standard library. '';
  inputs.src-timezones-v0_2_1.flake = false;
  inputs.src-timezones-v0_2_1.type = "github";
  inputs.src-timezones-v0_2_1.owner = "GULPF";
  inputs.src-timezones-v0_2_1.repo = "timezones";
  inputs.src-timezones-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-timezones-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timezones-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timezones-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}