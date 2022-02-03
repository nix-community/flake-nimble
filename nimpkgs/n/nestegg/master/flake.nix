{
  description = ''A nimterop wrapper for the nestegg portable webm video demuxer'';
  inputs.src-nestegg-master.flake = false;
  inputs.src-nestegg-master.type = "github";
  inputs.src-nestegg-master.owner = "capocasa";
  inputs.src-nestegg-master.repo = "nim-nestegg";
  inputs.src-nestegg-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nestegg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nestegg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nestegg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}