{
  description = ''Swift-like unicode string handling'';
  inputs.src-strunicode-master.flake = false;
  inputs.src-strunicode-master.type = "github";
  inputs.src-strunicode-master.owner = "nitely";
  inputs.src-strunicode-master.repo = "nim-strunicode";
  inputs.src-strunicode-master.ref = "refs/heads/master";
  
  
  inputs."normalize".type = "github";
  inputs."normalize".owner = "riinr";
  inputs."normalize".repo = "flake-nimble";
  inputs."normalize".ref = "flake-pinning";
  inputs."normalize".dir = "nimpkgs/n/normalize";

  
  inputs."graphemes".type = "github";
  inputs."graphemes".owner = "riinr";
  inputs."graphemes".repo = "flake-nimble";
  inputs."graphemes".ref = "flake-pinning";
  inputs."graphemes".dir = "nimpkgs/g/graphemes";

  outputs = { self, nixpkgs, src-strunicode-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-strunicode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-strunicode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}