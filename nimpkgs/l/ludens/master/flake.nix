{
  description = ''Little game library using opengl and sfml'';
  inputs.src-ludens-master.flake = false;
  inputs.src-ludens-master.type = "github";
  inputs.src-ludens-master.owner = "rnentjes";
  inputs.src-ludens-master.repo = "nim-ludens";
  inputs.src-ludens-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ludens-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ludens-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ludens-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}