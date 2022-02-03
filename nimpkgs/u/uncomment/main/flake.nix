{
  description = ''uncomment the codes at the compile time'';
  inputs.src-uncomment-main.flake = false;
  inputs.src-uncomment-main.type = "github";
  inputs.src-uncomment-main.owner = "hamidb80";
  inputs.src-uncomment-main.repo = "uncomment";
  inputs.src-uncomment-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-uncomment-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uncomment-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uncomment-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}