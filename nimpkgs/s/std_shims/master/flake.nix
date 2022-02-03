{
  description = ''APIs available in the latests version of Nim, backported to older stable releases'';
  inputs.src-std_shims-master.flake = false;
  inputs.src-std_shims-master.type = "github";
  inputs.src-std_shims-master.owner = "status-im";
  inputs.src-std_shims-master.repo = "nim-std-shims";
  inputs.src-std_shims-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-std_shims-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-std_shims-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-std_shims-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}