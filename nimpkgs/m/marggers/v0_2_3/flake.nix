{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
  inputs.src-marggers-v0_2_3.flake = false;
  inputs.src-marggers-v0_2_3.type = "github";
  inputs.src-marggers-v0_2_3.owner = "metagn";
  inputs.src-marggers-v0_2_3.repo = "marggers";
  inputs.src-marggers-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-marggers-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-marggers-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}