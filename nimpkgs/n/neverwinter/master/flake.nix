{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-master.flake = false;
  inputs.src-neverwinter-master.type = "github";
  inputs.src-neverwinter-master.owner = "niv";
  inputs.src-neverwinter-master.repo = "neverwinter.nim";
  inputs.src-neverwinter-master.ref = "refs/heads/master";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-neverwinter-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}