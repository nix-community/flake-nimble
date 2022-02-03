{
  description = ''A utility library to find the directory you need to app in.'';
  inputs.src-appdirs-0_1_1.flake = false;
  inputs.src-appdirs-0_1_1.type = "github";
  inputs.src-appdirs-0_1_1.owner = "MrJohz";
  inputs.src-appdirs-0_1_1.repo = "appdirs";
  inputs.src-appdirs-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-appdirs-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-appdirs-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-appdirs-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}