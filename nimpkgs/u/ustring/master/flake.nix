{
  description = ''utf-8 string'';
  inputs.src-ustring-master.flake = false;
  inputs.src-ustring-master.type = "github";
  inputs.src-ustring-master.owner = "rokups";
  inputs.src-ustring-master.repo = "nim-ustring";
  inputs.src-ustring-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ustring-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ustring-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ustring-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}