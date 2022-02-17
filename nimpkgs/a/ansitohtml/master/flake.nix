{
  description = ''Converts ANSI colour codes to HTML span tags with style tags'';
  inputs.src-ansitohtml-master.flake = false;
  inputs.src-ansitohtml-master.type = "github";
  inputs.src-ansitohtml-master.owner = "PMunch";
  inputs.src-ansitohtml-master.repo = "ansitohtml";
  inputs.src-ansitohtml-master.ref = "refs/heads/master";
  
  
  inputs."ansiparse".type = "github";
  inputs."ansiparse".owner = "riinr";
  inputs."ansiparse".repo = "flake-nimble";
  inputs."ansiparse".ref = "flake-pinning";
  inputs."ansiparse".dir = "nimpkgs/a/ansiparse";

  outputs = { self, nixpkgs, src-ansitohtml-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ansitohtml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ansitohtml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}