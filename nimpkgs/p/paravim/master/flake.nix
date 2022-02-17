{
  description = ''An embedded text editor for paranim games'';
  inputs.src-paravim-master.flake = false;
  inputs.src-paravim-master.type = "github";
  inputs.src-paravim-master.owner = "paranim";
  inputs.src-paravim-master.repo = "paravim";
  inputs.src-paravim-master.ref = "refs/heads/master";
  
  
  inputs."paranim".type = "github";
  inputs."paranim".owner = "riinr";
  inputs."paranim".repo = "flake-nimble";
  inputs."paranim".ref = "flake-pinning";
  inputs."paranim".dir = "nimpkgs/p/paranim";

  
  inputs."pararules".type = "github";
  inputs."pararules".owner = "riinr";
  inputs."pararules".repo = "flake-nimble";
  inputs."pararules".ref = "flake-pinning";
  inputs."pararules".dir = "nimpkgs/p/pararules";

  
  inputs."paratext".type = "github";
  inputs."paratext".owner = "riinr";
  inputs."paratext".repo = "flake-nimble";
  inputs."paratext".ref = "flake-pinning";
  inputs."paratext".dir = "nimpkgs/p/paratext";

  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, src-paravim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paravim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paravim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}