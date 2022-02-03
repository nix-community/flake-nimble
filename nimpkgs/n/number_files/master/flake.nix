{
  description = ''Command to add counter suffix/prefix to a list of files.'';
  inputs.src-number_files-master.flake = false;
  inputs.src-number_files-master.type = "github";
  inputs.src-number_files-master.owner = "Araq";
  inputs.src-number_files-master.repo = "number_files";
  inputs.src-number_files-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-number_files-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-number_files-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-number_files-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}