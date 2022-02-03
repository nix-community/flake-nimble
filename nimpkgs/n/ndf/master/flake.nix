{
  description = ''Duplicate files finder'';
  inputs.src-ndf-master.flake = false;
  inputs.src-ndf-master.type = "github";
  inputs.src-ndf-master.owner = "rustomax";
  inputs.src-ndf-master.repo = "ndf";
  inputs.src-ndf-master.ref = "refs/heads/master";
  
  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."murmurhash".url = "path:../../../m/murmurhash";
  inputs."murmurhash".type = "github";
  inputs."murmurhash".owner = "riinr";
  inputs."murmurhash".repo = "flake-nimble";
  inputs."murmurhash".ref = "flake-pinning";
  inputs."murmurhash".dir = "nimpkgs/m/murmurhash";

  outputs = { self, nixpkgs, src-ndf-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndf-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ndf-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}