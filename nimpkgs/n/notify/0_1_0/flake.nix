{
  description = ''A wrapper to notification libraries'';
  inputs.src-notify-0_1_0.flake = false;
  inputs.src-notify-0_1_0.type = "github";
  inputs.src-notify-0_1_0.owner = "xbello";
  inputs.src-notify-0_1_0.repo = "notify-nim";
  inputs.src-notify-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-notify-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notify-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notify-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}