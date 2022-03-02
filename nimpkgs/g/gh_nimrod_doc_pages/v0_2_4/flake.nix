{
  description = ''Generates a GitHub documentation website for Nim projects.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-gh_nimrod_doc_pages-v0_2_4.flake = false;
  inputs.src-gh_nimrod_doc_pages-v0_2_4.type = "github";
  inputs.src-gh_nimrod_doc_pages-v0_2_4.owner = "Araq";
  inputs.src-gh_nimrod_doc_pages-v0_2_4.repo = "gh_nimrod_doc_pages";
  inputs.src-gh_nimrod_doc_pages-v0_2_4.ref = "refs/tags/v0.2.4";
  inputs.src-gh_nimrod_doc_pages-v0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."midnight_dynamite".type = "github";
  # inputs."midnight_dynamite".owner = "riinr";
  # inputs."midnight_dynamite".repo = "flake-nimble";
  # inputs."midnight_dynamite".ref = "flake-pinning";
  # inputs."midnight_dynamite".dir = "nimpkgs/m/midnight_dynamite";
  # inputs."midnight_dynamite".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."midnight_dynamite".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."argument_parser".type = "github";
  # inputs."argument_parser".owner = "riinr";
  # inputs."argument_parser".repo = "flake-nimble";
  # inputs."argument_parser".ref = "flake-pinning";
  # inputs."argument_parser".dir = "nimpkgs/a/argument_parser";
  # inputs."argument_parser".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."argument_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/gradha/badger_bits.git".type = "github";
  # inputs."https://github.com/gradha/badger_bits.git".owner = "riinr";
  # inputs."https://github.com/gradha/badger_bits.git".repo = "flake-nimble";
  # inputs."https://github.com/gradha/badger_bits.git".ref = "flake-pinning";
  # inputs."https://github.com/gradha/badger_bits.git".dir = "nimpkgs/h/https://github.com/gradha/badger_bits.git";
  # inputs."https://github.com/gradha/badger_bits.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/gradha/badger_bits.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."lazy_rest".type = "github";
  # inputs."lazy_rest".owner = "riinr";
  # inputs."lazy_rest".repo = "flake-nimble";
  # inputs."lazy_rest".ref = "flake-pinning";
  # inputs."lazy_rest".dir = "nimpkgs/l/lazy_rest";
  # inputs."lazy_rest".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."lazy_rest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gh_nimrod_doc_pages-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gh_nimrod_doc_pages-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gh_nimrod_doc_pages-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}