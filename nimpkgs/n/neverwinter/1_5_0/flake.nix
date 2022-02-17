{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-1_5_0.flake = false;
  inputs.src-neverwinter-1_5_0.type = "github";
  inputs.src-neverwinter-1_5_0.owner = "niv";
  inputs.src-neverwinter-1_5_0.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_5_0.ref = "refs/tags/1.5.0";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-neverwinter-1_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-1_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}