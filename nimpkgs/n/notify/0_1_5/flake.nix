{
  description = ''A wrapper to notification libraries'';
  inputs.src-notify-0_1_5.flake = false;
  inputs.src-notify-0_1_5.type = "github";
  inputs.src-notify-0_1_5.owner = "xbello";
  inputs.src-notify-0_1_5.repo = "notify-nim";
  inputs.src-notify-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-notify-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notify-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notify-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}