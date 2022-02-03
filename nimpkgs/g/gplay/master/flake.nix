{
  description = ''Google Play APK Uploader'';
  inputs.src-gplay-master.flake = false;
  inputs.src-gplay-master.type = "github";
  inputs.src-gplay-master.owner = "yglukhov";
  inputs.src-gplay-master.repo = "gplay";
  inputs.src-gplay-master.ref = "refs/heads/master";
  
  
  inputs."jwt".url = "path:../../../j/jwt";
  inputs."jwt".type = "github";
  inputs."jwt".owner = "riinr";
  inputs."jwt".repo = "flake-nimble";
  inputs."jwt".ref = "flake-pinning";
  inputs."jwt".dir = "nimpkgs/j/jwt";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-gplay-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gplay-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gplay-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}