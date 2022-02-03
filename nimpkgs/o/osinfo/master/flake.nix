{
  description = ''Modules providing information about the OS.'';
  inputs.src-osinfo-master.flake = false;
  inputs.src-osinfo-master.type = "github";
  inputs.src-osinfo-master.owner = "nim-lang";
  inputs.src-osinfo-master.repo = "osinfo";
  inputs.src-osinfo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-osinfo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osinfo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osinfo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}