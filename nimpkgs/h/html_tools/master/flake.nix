{
  description = ''HTML5 Tools for Nim, all Templates, No CSS, No Libs, No JS Framework'';
  inputs.src-html_tools-master.flake = false;
  inputs.src-html_tools-master.type = "github";
  inputs.src-html_tools-master.owner = "juancarlospaco";
  inputs.src-html_tools-master.repo = "nim-html-tools";
  inputs.src-html_tools-master.ref = "refs/heads/master";
  
  
  inputs."contra".type = "github";
  inputs."contra".owner = "riinr";
  inputs."contra".repo = "flake-nimble";
  inputs."contra".ref = "flake-pinning";
  inputs."contra".dir = "nimpkgs/c/contra";

  outputs = { self, nixpkgs, src-html_tools-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-html_tools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-html_tools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}