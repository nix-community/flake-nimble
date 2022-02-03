{
  description = ''Wrapper for AutoIt v3.3.14.2'';
  inputs.src-autonim-main.flake = false;
  inputs.src-autonim-main.type = "github";
  inputs.src-autonim-main.owner = "Guevara-chan";
  inputs.src-autonim-main.repo = "AutoNim";
  inputs.src-autonim-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-autonim-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-autonim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-autonim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}