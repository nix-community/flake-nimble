{
  description = ''Nim library to get/set a hostname'';
  inputs.src-hostname-main.flake = false;
  inputs.src-hostname-main.type = "github";
  inputs.src-hostname-main.owner = "rominf";
  inputs.src-hostname-main.repo = "nim-hostname";
  inputs.src-hostname-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-hostname-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hostname-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hostname-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}