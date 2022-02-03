{
  description = ''A utility library to find the directory you need to app in.'';
  inputs.src-appdirs-0_1_0.flake = false;
  inputs.src-appdirs-0_1_0.type = "github";
  inputs.src-appdirs-0_1_0.owner = "MrJohz";
  inputs.src-appdirs-0_1_0.repo = "appdirs";
  inputs.src-appdirs-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-appdirs-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-appdirs-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-appdirs-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}