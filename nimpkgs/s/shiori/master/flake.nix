{
  description = ''SHIORI Protocol Parser/Builder'';
  inputs.src-shiori-master.flake = false;
  inputs.src-shiori-master.type = "github";
  inputs.src-shiori-master.owner = "Narazaka";
  inputs.src-shiori-master.repo = "shiori-nim";
  inputs.src-shiori-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shiori-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shiori-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shiori-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}