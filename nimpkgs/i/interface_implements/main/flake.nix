{
  description = ''implements macro creates toInterface proc.'';
  inputs.src-interface_implements-main.flake = false;
  inputs.src-interface_implements-main.type = "github";
  inputs.src-interface_implements-main.owner = "itsumura-h";
  inputs.src-interface_implements-main.repo = "nim-interface-implements";
  inputs.src-interface_implements-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-interface_implements-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-interface_implements-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-interface_implements-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}