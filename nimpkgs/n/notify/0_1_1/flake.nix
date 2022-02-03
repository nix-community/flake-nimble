{
  description = ''A wrapper to notification libraries'';
  inputs.src-notify-0_1_1.flake = false;
  inputs.src-notify-0_1_1.type = "github";
  inputs.src-notify-0_1_1.owner = "xbello";
  inputs.src-notify-0_1_1.repo = "notify-nim";
  inputs.src-notify-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-notify-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notify-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notify-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}