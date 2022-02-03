{
  description = ''Libarchive at compile-time, Libarchive Chibi Edition'';
  inputs.src-libarchibi-master.flake = false;
  inputs.src-libarchibi-master.type = "github";
  inputs.src-libarchibi-master.owner = "juancarlospaco";
  inputs.src-libarchibi-master.repo = "libarchibi";
  inputs.src-libarchibi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libarchibi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libarchibi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libarchibi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}