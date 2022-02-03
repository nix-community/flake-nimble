{
  description = ''A truly minimal concatenative programming language.'';
  inputs.src-mn-v0_2_0.flake = false;
  inputs.src-mn-v0_2_0.type = "github";
  inputs.src-mn-v0_2_0.owner = "h3rald";
  inputs.src-mn-v0_2_0.repo = "mn";
  inputs.src-mn-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-mn-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mn-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mn-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}