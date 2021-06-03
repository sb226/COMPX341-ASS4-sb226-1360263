
import React from 'react' ;
import BestSellers from './../modules/bestSellers/BestSellers';

import { render } from '@testing-library/react'
it("pass", ()=> {
    window.alert = jest.fn();
    const {getByTestId} = render(<BestSellers></BestSellers>)
    expect(getByTestId("div").innerHTML).toEqual("Top 20 best sellers");
    window.alert.mockClear();
})

