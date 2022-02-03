{
  description = ''A client for the Pwned passwords API.'';
  inputs.src-pwned-v0_1_0.flake = false;
  inputs.src-pwned-v0_1_0.type = "github";
  inputs.src-pwned-v0_1_0.owner = "dom96";
  inputs.src-pwned-v0_1_0.repo = "pwned";
  inputs.src-pwned-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-pwned-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pwned-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pwned-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}