{
  description = ''Generates a GitHub documentation website for Nim projects.'';
  inputs.src-gh_nimrod_doc_pages-master.flake = false;
  inputs.src-gh_nimrod_doc_pages-master.type = "github";
  inputs.src-gh_nimrod_doc_pages-master.owner = "Araq";
  inputs.src-gh_nimrod_doc_pages-master.repo = "gh_nimrod_doc_pages";
  inputs.src-gh_nimrod_doc_pages-master.ref = "refs/heads/master";
  
  
  inputs."midnight_dynamite".url = "path:../../../m/midnight_dynamite";
  inputs."midnight_dynamite".type = "github";
  inputs."midnight_dynamite".owner = "riinr";
  inputs."midnight_dynamite".repo = "flake-nimble";
  inputs."midnight_dynamite".ref = "flake-pinning";
  inputs."midnight_dynamite".dir = "nimpkgs/m/midnight_dynamite";

  
  inputs."argument_parser".url = "path:../../../a/argument_parser";
  inputs."argument_parser".type = "github";
  inputs."argument_parser".owner = "riinr";
  inputs."argument_parser".repo = "flake-nimble";
  inputs."argument_parser".ref = "flake-pinning";
  inputs."argument_parser".dir = "nimpkgs/a/argument_parser";

  
  inputs."https://github.com/gradha/badger_bits.git".url = "path:../../../h/https://github.com/gradha/badger_bits.git";
  inputs."https://github.com/gradha/badger_bits.git".type = "github";
  inputs."https://github.com/gradha/badger_bits.git".owner = "riinr";
  inputs."https://github.com/gradha/badger_bits.git".repo = "flake-nimble";
  inputs."https://github.com/gradha/badger_bits.git".ref = "flake-pinning";
  inputs."https://github.com/gradha/badger_bits.git".dir = "nimpkgs/h/https://github.com/gradha/badger_bits.git";

  
  inputs."lazy_rest".url = "path:../../../l/lazy_rest";
  inputs."lazy_rest".type = "github";
  inputs."lazy_rest".owner = "riinr";
  inputs."lazy_rest".repo = "flake-nimble";
  inputs."lazy_rest".ref = "flake-pinning";
  inputs."lazy_rest".dir = "nimpkgs/l/lazy_rest";

  outputs = { self, nixpkgs, src-gh_nimrod_doc_pages-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gh_nimrod_doc_pages-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gh_nimrod_doc_pages-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}