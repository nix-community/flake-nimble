{
  description = ''wrapper around libplist https://github.com/libimobiledevice/libplist'';
  inputs.src-libplist-master.flake = false;
  inputs.src-libplist-master.type = "github";
  inputs.src-libplist-master.owner = "samdmarshall";
  inputs.src-libplist-master.repo = "libplist.nim";
  inputs.src-libplist-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libplist-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libplist-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libplist-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}