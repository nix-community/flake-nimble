{
  description = ''Feature-rich readline replacement'';
  inputs.src-prompt-master.flake = false;
  inputs.src-prompt-master.type = "github";
  inputs.src-prompt-master.owner = "surf1nb1rd";
  inputs.src-prompt-master.repo = "nim-prompt";
  inputs.src-prompt-master.ref = "refs/heads/master";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, src-prompt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prompt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-prompt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}