{
  description = ''Cover Art Archive API wrapper'';
  inputs.src-coverartarchive-master.flake = false;
  inputs.src-coverartarchive-master.type = "github";
  inputs.src-coverartarchive-master.owner = "achesak";
  inputs.src-coverartarchive-master.repo = "nim-coverartarchive";
  inputs.src-coverartarchive-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-coverartarchive-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coverartarchive-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-coverartarchive-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}